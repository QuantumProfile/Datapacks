function impmat(matrix){
    document.write("</br>")
    for(let i=0;i<matrix.length;i++){
        for(let j=0;j<matrix[i].length;j++){
            document.write("  "+matrix[i][j])
        }
        document.write("</br>");
    }
    document.write("</br>")
}

document.write("asd")
//impmat([[1,2,3],[4,5,6],[7,8,9]])

function op(bo,m1,m2){
    let res=[]
    if(bo=="sum"){
        for(let i=0;i<m1.length;i++){
            let r=[];
            for(let j=0;j<m1[i].length;j++){
                r.push(m1[i][j]+m2[i][j]);
            }
            res.push(r);
        }
    }
    if(bo=="rest"){
        for(let i=0;i<m1.length;i++){
            let r=[];
            for(let j=0;j<m1[i].length;j++){
                r.push(m1[i][j]-m2[i][j]);
            }
            res.push(r);
        }
    }
    if(bo=="mult"){
        for(let i=0;i<m1.length;i++){
            let r=[];
            for(let j=0;j<m2[0].length;j++){
                let n=0;
                for(let k=0;k<m1[i].length;k++){
                    n=n+m1[i][k]*m2[k][j];
                }
                r.push(n);
            }
            res.push(r);
        }
    }
    return res;
}

function trans(m){
    //p=m.length>m[0].length?m.length:m[0].length;
    let res=[];
    for(let i=0;i<m[0].length;i++){
        let r=[];
        for(let j=0;j<m.length;j++){
            r.push(m[j][i]);
        }
        res.push(r);
    }
    return res;
}
function iden(num){
    let res=[];
    for(let i=1;i<=num;i++){
        let r=[]
        for(let j=1;j<=num;j++){
            if(i==j){r.push(1)}
            else {r.push(0)}
        }
        res.push(r);
    }
    return res;
}
function scalar(m,k,s="mult"){
    let res=[];
    if(s=="mult"){
        for(let i=0;i<m.length;i++){
            let r=[];
            for(let j=0;j<m[i].length;j++){
                r.push(k*m[i][j])
            }
            res.push(r);
        }
    }
    if(s=="exp"){
        res=iden(m.length)
        for(let i=1;i<=k;i++){
            res=op("mult",res,m)
        }
    }
    return res;
}
function not(list,string){
    function convert(way,what,values){
        if(way=="left"){
            return "{"+values.indexOf(what).toString()+"}"
        }
        if(way=="right"){
            let whit=what.trim().split("{")[1].parseInt()
            return values[whit]
        }
    }
    let binop=["+","-","x","*","^"]; let binsep=[["(",")"]];
    let unitop=["{t}"];let specvar=["{id}"]
    function divide(string2,value){
        if(!string2.includes(value))return string2;
            let limits=[];let string5=""
            let string3="";let string4="";
            for(let i=0;i<string2.length;i++){
                string5=string5+string2[i]
                if(string5.includes(value)){
                    limits.push(i-value.length+1)
                    limits.push(i)
                    break;
                }
            }
            for(let i=0;i<limits[0];i++){
                string3=string3+string2[i]
            }
            for(let i=limits[1]+1;i<string2.length;i++){
                string4=string4+string2[i]
            }
            return [string3,string4]
    }
    function count(string2,list2){
        let counter=[]
        for(let i=0;i<list2.length;i++)
        if(string2.contains(list2[i]))
        counter.push([string2.indexOf(list2[i]),list2[i]]);
        return counter
    }
    function oper(m1,ope,m2){
        if(ope=="+"){
            return op("sum",m1,m2)
        }
        if(ope=="-"){
            return op("rest",m1,m2)
        }
        if(ope=="*"){
            return scalar(m2,m1)
        }
        if(ope=="x"){
            return op("mult",m1,m2)
        }if(ope=="^"){
            return scalar(m1,m2,"exp")
        }
    }
    function separate(string2,mode){
        let algo=count(string2,binsep);
        if(algo.length==0)return string2
        if(mode=="left"){
            let integer=0;let algo2=""
            for(let i=0;i<algo.length;i++){
                if(algo[i][0]>=integer){
                    integer=algo[i][0]
                    algo2=algo[i][1][0]
                }
            }
            return divide(string2,algo2)[1]
        }
        if(mode=="right"){
            let integer=string2.length;let algo2=""
            for(let i=0;i<algo.length;i++){
                if(algo[i][0]<integer){
                    integer=algo[i][0]
                    algo2=algo[i][1][1]
                }
            }
            return divide(string2,algo2)[0]
        }
    }
    function operate(list2,string2){
        let algo=count(string2,binop);
        if(algo.length==0){
            let algo2=parseFloat(string2)
            if(algo2!=NaN)return algo2
            return convert("right",string2,list2)
        }
        if(algo.length>0){
            let list3=divide(string2,algo[algo.length-1][1])
            return oper(separate(list3[0],"left"),algo[algo.length-1][1],separate(list3[1],"right"))
        }
    }
    let hash="abcd";let hashsetqv=[];let tagsetqV=[];let outerstring=""
    for(let i=0;i<hash.length;i++){
        hashsetqv[i]=hash[i]
    }
    for(let i=0;i<string.length;i++){
        tagsetqV[i]=string[i]
    }
    for(let i=0;i<tagsetqV.length;i++){
        for(let j=0;j<hashsetqv.length;j++){
            if(tagsetqV[i]==hashsetqv[j])
            tagsetqV[i]=convert("left",hashsetqv[j],hashsetqv)
        }
    }
    for(let i=0;i<tagsetqV.length;i++){
        outerstring=outerstring+tagsetqV[i]
    }
    return operate(list,outerstring)
}
function not3(list,string){
    function which(string4){
        if (string4.toLowerCase().includes("a")){
            return 0
        }
        else if (string4.toLowerCase().includes("b")){
            return 1
        }
        else if (string4.toLowerCase().includes("c")){
            return 2
        }
        if (string4.toLowerCase().includes("d")){
            return 3
        }
    }
    function unwhich(list2,m){
        for(let i=0;i<list2.length;i++){
            if(m==list2[i]) {
                if(i==0)return "a"
                if(i==1)return "b"
                if(i==2)return "c"
                if(i==3)return "d" 
            }
        }
    }
    function convert(way,what,values,infinite=true,count=4){
        if (infinite){
            if(way=="left"){
                return "{"+values.indexOf(what).toString()+"}"
            }
            if(way=="right"){
                let whit=what.trim().split("{")[1].parseInt()
                return values[whit]
            }
        }
        else if (count==4){
            if(way=="left"){
                return unwhich(values,what)
            }
            if(way=="right"){
                return which(what)
            }
        }
    }
    function stringify(list2){
        let list3=["x","*","+","-","^","{t}","{id}"]
        let string3="";
        for(let i=0;i<list2.length;i++){
            let starts="";let ends="";
            for(let j=0;j<list3.length;j++){
                if(list2[i].trim().startsWith(list3[j]))
                starts=list3[j];
                if(list2[i].trim().endsWith(list3[j]))
                ends=list3[j];
            }
            string3=string3+starts+convert("left",list2[i],list2)+ends
        }
        return string3;
    }
    function zero(m){
        let res=[];
        for(let i=0;i<m.length;i++){
            let r=[]
            for(let j=0;j<m[i].length;j++){
                r.push(0)
            }
            res.push(r)
        }
        return res;
    }
    function oper(list2,mode,string2){
        if(mode=="+"){
            let list3=string2.split("+");
            let retorno=zero(list2[which(list3[0])])
            for(let i=0;i<list3.length;i++){
                retorno=op("sum",retorno,list2[which(list3[i])])
            }
            return retorno;
        }
        if(mode=="x"){
            let list3=string2.split("x");
            let retorno=iden(list2[which(list3[0])].length)
            for(let i=0;i<list3.length;i++){
                retorno=op("mult",retorno,list2[which(list3[i])])
            }
            return retorno;
        }
        if(mode=="-"){
            let list3=string2.split("-");
            let retorno=list2[which(list3[0])]
            for(let i=1;i<list3.length;i++){
                retorno=op("rest",retorno,list2[which(list3[i])])
            }
            return retorno;
        }
        if(mode=="."){
            let list3=string2.split("*");
            let retorno=1
            for(let i=0;i<list3.length-1;i++){
                retorno=retorno*parseFloat(list3[i])
            }
            retorno=scalar(list2[which(list3[list3.length-1])],retorno)
            return retorno;
        }
        if(mode=="^"){
            let list3=string2.split("^");
            let retorno=list2[which(list3[0])]
            for(let i=1;i<list3.length;i++){
                retorno=scalar(retorno,parseFloat(list3[i]),"exp")
            }
            return retorno;
        }
    }
    function oper2(list2,mode){
        if(mode=="+"){
            let retorno=zero(list2[0])
            for(let i=0;i<list2.length;i++){
                retorno=op("sum",retorno,list2[i])
            }
            return retorno;
        }
        if(mode=="x"){
            let retorno=iden(list2[0].length)
            for(let i=0;i<list2.length;i++){
                retorno=op("mult",retorno,list2[i])
            }
            return retorno;
        }
        if(mode=="-"){
            let retorno=list2[0]
            for(let i=1;i<list2.length;i++){
                retorno=op("rest",retorno,list2[i])
            }
            return retorno;
        }
        if(mode=="."){
            let retorno=1
            for(let i=0;i<list2.length-1;i++){
                retorno=retorno*parseFloat(list2[i])
            }
            retorno=scalar(list2[list2.length-1],retorno)
            return retorno;
        }
        if(mode=="^"){
            let retorno=list2[0]
            for(let i=1;i<list2.length;i++){
                retorno=scalar(retorno,parseInt(list2[i]),"exp")
            }
            return retorno;
        }
    }
    function operate(list2,mode,string2){
        if(mode=="+"){
            if(string2.includes("+")){
                let list3=string2.split("+")
                let list4=[];
                for(let i=0;i<list3.length;i++){
                    list4.push(operate(list2,"-",list3[i]))
                }
                return oper2(list4,"+")
            }
            else return operate(list2,"-",string2)
        }
        if(mode=="-"){
            if(string2.includes("-")){
                let list3=string2.split("-")
                let list4=[];
                for(let i=0;i<list3.length;i++){
                    list4.push(operate(list2,"x",list3[i]))
                }
                return oper2(list4,"-")
            }
            else return operate(list2,"x",string2)
        }
        if(mode=="x"){
            if(string2.includes("x")){
                let list3=string2.split("x")
                let list4=[];
                for(let i=0;i<list3.length;i++){
                    list4.push(operate(list2,".",list3[i]))
                }
                return oper2(list4,"x")
            }
            else return operate(list2,".",string2)
        }
        if(mode=="."){
            if(string2.includes("*")){
                let list3=string2.split("*")
                let list4=[];
                for(let i=0;i<list3.length;i++){
                    list4.push(operate(list2,"^",list3[i]))
                }
                return oper2(list4,".")
            }
            else return operate(list2,"^",string2)
        }
        if(mode=="^"){
            let string3=stringify(list2);
            let response=""
            if(string2.includes("^")){
                let list3=string2.split("^")
                let list4=[];
                for(let i=0;i<list3.length;i++){
                    list4.push(operate(list2,"^",list3[i]))
                }
                if(!string3.includes("_")) response=oper2(list4,"^");
            }else response= convert("right",string2,list2);
            if(!string3.includes("_"))return response;
            return separ(list2,"1",string2);
        }
    }
    function separ(list2,mode,string2){
        if(mode=="1"){
            if(string2.includes("___")){
                let list3=string2.split("___")
                let list4=[]
                for(let i=0;i<list3.length;i++){
                    list4.push(operate(list2,"+",list3[i]))
                }
                let string3=stringify(list4)
                return separ(list4,"2",string3)
            }
            else return separ(list2,"2",string2)
        }
        if(mode=="2"){
            if(string2.includes("__")){
                let list3=string2.split("__")
                let list4=[]
                for(let i=0;i<list3.length;i++){
                    list4.push(operate(list2,"+",list3[i]))
                }
                let string3=stringify(list4)
                return separ(list4,"3",string3)
            }
            else return separ(list2,"3",string2)
        }
        if(mode=="3"){
            if(string2.includes("_")){
                let list3=string2.split("_")
                let list4=[];
                for(let i=0;i<list3.length;i++){
                    list4.push(operate(list2,"+",list3[i]))
                }
                let string3=stringify(list4)
                return operate(list4,"2",string3)
            }
            else return convert("right",string2,list2);
        }
    }
    let hash="abcd";let hashsetqv=[];let tagsetqV=[];let outerstring=""
    for(let i=0;i<hash.length;i++){
        hashsetqv[i]=hash[i]
    }
    for(let i=0;i<string.length;i++){
        tagsetqV[i]=string[i]
    }
    for(let i=0;i<tagsetqV.length;i++){
        for(let j=0;j<hashsetqv.length;j++){
            if(tagsetqV[i]==hashsetqv[j])
            tagsetqV[i]=convert("left",hashsetqv[j],hashsetqv)
        }
    }
    for(let i=0;i<tagsetqV.length;i++){
        outerstring=outerstring+tagsetqV[i]
    }
    return operate(list,"+",outerstring)
    //document.write(outerstring)
}

function notn(lista0,string){
    /**let inter=string.split("_t_")
    for(let i=0;i<inter.length;i++){
        let inter2=inter[i].split("x")
        for(let j=0;j<inter2.length;j++){}
    }*/

    function oper(a,b,string2){
        if(string2.contains("x")){
            let lista=string2.split("x")
            if(lista[0].trim().toLowerCase()=="a"&&
            lista[1].toLowerCase().trim()=="b"){
                return op("mult",a,b)
            }
        }
        else if (string2.contains("+")){
            let lista=string2.split("+")
            if(lista[0].trim().toLowerCase()=="a"&&
            lista[1].toLowerCase().trim()=="b"){
                return op("sum",a,b)
            }
        }
        else if (string2.contains("-")){
            let lista=string2.split("-")
            if(lista[0].trim().toLowerCase()=="a"&&
            lista[1].toLowerCase().trim()=="b"){
                return op("rest",a,b)
            }
        }
        else if (string2.contains(".")){
            let lista=string2.split(".")
            if(lista[0].trim().toLowerCase()=="a"&&
            lista[1].toLowerCase().trim()=="b"){
                return scalar(b,a)
            }
        }
        else if (string2.contains("^")){
            let lista=string2.split("^")
            if(lista[0].trim().toLowerCase()=="a"&&
            lista[1].toLowerCase().trim()=="b"){
                return scalar(a,b,"exp")
            }
        }
    }
    function which(string4){
        if (string4.toLowerCase().contains("a")){
            return 0
        }
        else if (string4.toLowerCase().contains("b")){
            return 1
        }
        else if (string4.toLowerCase().contains("c")){
            return 2
        }
        if (string4.toLowerCase().contains("d")){
            return 3
        }
    }
    function separar(string5,contains,info=true){
        let response=info?["outer",string5]:string5;
        function interno(contiene,tensor){
            if(typeof tensor!=typeof[]){
                if(tensor.contains(contiene))
                return tensor.split(contiene)
                else return tensor;
            }
            for(let i=0;i<tensor.length;i++){
                interno(contiene,tensor[i])
            }
        }

        for(let i=0;i<contains.length;i++){
            response=info?[contains[i],interno(contains[i],response[1])]:
            interno(contains[i],response)
        }
        return response
    }
    
    function separ(lista6,string3){
        if(string3.contains("{t}")){
            let lista5=string3.split("{t}")
            return trans(separ(lista6,lista5[0]))
        }
        let lista10=separar(string3,["+","-","x"])
        let lista11=[]
        function interno3(tensor3){
            if(typeof tensor3[1]!=typeof[]){
                return lista6[which(tensor3[1])]
            }
            for(let i=0;i<tensor3.length;i++){
                interno3(tensor3[i])
                lista11.push()
            }
        }
        
        function interno2(tensor2){
            if(typeof tensor2[1]!=typeof[]){
                return lista6[which(tensor2[1])]
            }
            for(let i=0;i<tensor2.length;i++){
                interno2(tensor2[i])
            }
        }
        

        if(string3.contains("+")){
            let lista7=string3.split("+")
            for(let i=0;i<lista7;i++){
                if(lista7[i].contains("-")){
                    let lista8=lista7[i].split("-")
                    for(let j=0;j<lista8.length;j++){
                        if(lista8[j].contains("x")){
                            let lista9=lista8[j].split("x")
                            let matriz=iden(which(lista9[0].length));
                            for(let k=0;k<lista9.length;k++){
                                matriz=op("mult",matriz,lista9[k])
                            }
                        }
                    }
                }
            }
        }
    }
    let lista2=separar(string,["___","__","_"],false)
}



A=[[2,1,-2],[3,2,5]];B=[[2,-1],[3,4],[1,-2]];C=[[2,1,3],[-1,2,4],[3,1,0]];D=[[2,-1],[-3,2]];
E=[[1,1,2],[2,-1,3],[-3,2,-1]];F=[[1,0],[2,-3]]

/**ListaExterna=[A,B,op("mult",A,B)]
for(let i=0;i<ListaExterna.length;i++){
    impmat(ListaExterna[i])
}*/
impmat(not([A,B],"axb"))
//not([A,B],"axb")

document.write("asd 2")
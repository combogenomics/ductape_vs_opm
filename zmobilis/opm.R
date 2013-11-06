library('opm')

outdir = tempdir()
x=array(list.files(pattern="*.json"))
result <- split_files(x, pattern = "^Data File", outdir = outdir)
x=explode_dir(outdir)
b=read_opm(x)
res <- c()
for (i in b){res <- c(res,do_aggr(i, boot=0))}
res.a <- lapply(res, aggregated)
j=0
for (i in res){
 j=j+1
 write(to_yaml(i), sprintf("ZM4_%s.yml", j))
}

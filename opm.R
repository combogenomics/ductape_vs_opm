library('opm')

outdir = tempdir()
x = array('all.csv')
result <- split_files(x, pattern = "^Data File", outdir = outdir)
x=explode_dir(outdir)
b=read_opm(x)
res <- c()
for (i in b){res <- c(res,do_aggr(i, boot=0))}
res.a <- lapply(res, aggregated)
for (i in res){write(to_yaml(i), sprintf("%s_%s.yml", i@csv_data[[5]], i@csv_data[[7]]))}

v = read.table("gene_condition_source_id.txt", header=TRUE, sep="\t", fill=TRUE, comment.char = "", quote = "")
write.table(v$DiseaseName, file="assignment1_output.txt", sep="\t", quote=FALSE)

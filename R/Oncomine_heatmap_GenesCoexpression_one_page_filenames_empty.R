Oncomine_heatmap_GenesCoexpression_one_page_filenames_empty<- function(){
  files=list.files() #get all the data picture
  txtcheck=files[grepl(pattern = ".txt",x = files)==FALSE]
  docxcheck=txtcheck[grepl(pattern = ".docx",x = txtcheck)==FALSE]
  doccheck=docxcheck[grepl(pattern = ".doc",x = docxcheck)==FALSE]
  if (length(doccheck)==0){
  Oncomine_heatmap_GenesCoexpression_one_page_filenames_not_empty(files)
  }else{
    doccheck1=paste(doccheck,collapse="\n")
    warning("The following files shoul be removed","\n",doccheck1)
    stop("Please make sure ONLY data file end with .txt .doc .docx including in the working directory. Or give object to this function")
  }
}

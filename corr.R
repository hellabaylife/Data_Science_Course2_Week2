corr <- function(directory = "specdata",threshold = 0){
        id <- 1:322
        id_vector <- numeric()
        data_frame <- data.frame()
        directory_list <- list.files(directory,full.names = T,pattern = ".csv")
        
        for(i in id){
                file <- (read.csv(directory_list[i]))
                good <-  sum(complete.cases(file))
                if (good>threshold) {
                        final <- cor(file$nitrate,file$sulfate,use = "complete.obs")
                        id_vector[i] <- final
                }
                id_vector
                newdf <- id_vector[!is.na(id_vector)]
}
newdf
        }

cr <- corr("specdata", 1000)
summary(cr)
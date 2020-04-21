
obs_cases <- function(directory, id = 1:332){
        v2 <- vector()
        data_frame <- data.frame()
        directory_list <- list.files(directory,full.names = T,pattern = ".csv")
        
        
        for(i in id){
                file <- (read.csv(directory_list[i]))
                good <-  sum(complete.cases(file))
                bad <- sum(!complete.cases(file))
                v2 <- c(v2,good)
        }
        data_frame <- data.frame(id=id,nobs=v2)
        data_frame
}

cc <- obs_cases("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

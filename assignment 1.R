
pollutantmean <- function(pollutant, id = 1:332){
        data_frame <- data.frame()
        directory_list <- list.files("specdata",full.names = T,pattern = ".csv")
        for(i in id){
                data_frame <- rbind(data_frame,read.csv(directory_list[i]))
        }
        result <- mean(data_frame[,grep(pollutant,colnames(data_frame))],na.rm = T)
        result
}
pollutantmean("sulfate",1:7)











test <- function(id = 1:322){
        data_frame <- data.frame()
        directory_list <- list.files("specdata",full.names = T,pattern = ".csv")
                for(i in id){
        data_frame <- rbind(data_frame,read.csv(directory_list[i]))
}
data_frame

}



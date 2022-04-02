.class Lcom/appsgeyser/sdk/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# direct methods
.method static handleException(Ljava/lang/Exception;)V
    .registers 1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsgeyser/sdk/Logger;->ErrorLog(Ljava/lang/String;)V

    return-void
.end method

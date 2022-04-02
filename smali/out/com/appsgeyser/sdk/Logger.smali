.class public Lcom/appsgeyser/sdk/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public static DebugLog(Ljava/lang/String;)V
    .registers 2

    const-string v0, "*** AppsgeyserSDK Debug"

    .line 12
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static ErrorLog(Ljava/lang/String;)V
    .registers 2

    const-string v0, "AppsgeyserSDK"

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class Lcom/appsgeyser/multiTabApp/utils/UserAgentManager$NewApiWrapper;
.super Ljava/lang/Object;
.source "UserAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/utils/UserAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewApiWrapper"
.end annotation


# direct methods
.method static getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 40
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

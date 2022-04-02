.class public Lcom/appnext/core/webview/WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/appnext/core/webview/WebAppInterface;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public destroy(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroy with error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public filterAds(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filterAds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public getAdAt(I)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAdAt "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    return-object p1
.end method

.method public getAdCount()I
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public gotoAppWall()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public init()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public jsError(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jsError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public loadAds()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public logSTP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "logSTP "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public notifyImpression(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public openLink(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openLink "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openResultPage(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openResultPage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openStore(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openStore: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public play()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public postView(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public videoPlayed()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

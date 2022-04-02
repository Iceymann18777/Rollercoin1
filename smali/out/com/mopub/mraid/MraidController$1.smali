.class Lcom/mopub/mraid/MraidController$1;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$MoPubSchemeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$1;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 1

    return-void
.end method

.method public onCrash()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$1;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 147
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$1;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v0

    const-string v1, "chrome://crash"

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->loadUrl(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public onFailLoad()V
    .registers 1

    return-void
.end method

.method public onFinishLoad()V
    .registers 1

    return-void
.end method

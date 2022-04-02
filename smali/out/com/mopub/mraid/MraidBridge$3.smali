.class Lcom/mopub/mraid/MraidBridge$3;
.super Ljava/lang/Object;
.source "MraidBridge.java"

# interfaces
.implements Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidBridge;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidBridge;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$3;->this$0:Lcom/mopub/mraid/MraidBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$3;->this$0:Lcom/mopub/mraid/MraidBridge;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBridge;->access$000(Lcom/mopub/mraid/MraidBridge;)Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 180
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$3;->this$0:Lcom/mopub/mraid/MraidBridge;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBridge;->access$000(Lcom/mopub/mraid/MraidBridge;)Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onVisibilityChanged(Z)V

    :cond_11
    return-void
.end method

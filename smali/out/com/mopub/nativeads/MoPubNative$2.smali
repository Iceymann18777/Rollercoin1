.class Lcom/mopub/nativeads/MoPubNative$2;
.super Ljava/lang/Object;
.source "MoPubNative.java"

# interfaces
.implements Lcom/mopub/network/AdLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/AdRendererRegistry;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubNative;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNative;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative$2;->this$0:Lcom/mopub/nativeads/MoPubNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$2;->this$0:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubNative;->onAdError(Lcom/mopub/volley/VolleyError;)V

    return-void
.end method

.method public onSuccess(Lcom/mopub/network/AdResponse;)V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$2;->this$0:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0, p1}, Lcom/mopub/nativeads/MoPubNative;->access$000(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/network/AdResponse;)V

    return-void
.end method

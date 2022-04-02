.class Lcom/mopub/network/AdLoader$4;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/AdLoader;->loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/network/AdLoader;

.field final synthetic val$adResponse:Lcom/mopub/network/AdResponse;


# direct methods
.method constructor <init>(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V
    .registers 3

    .line 188
    iput-object p1, p0, Lcom/mopub/network/AdLoader$4;->this$0:Lcom/mopub/network/AdLoader;

    iput-object p2, p0, Lcom/mopub/network/AdLoader$4;->val$adResponse:Lcom/mopub/network/AdResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/mopub/network/AdLoader$4;->this$0:Lcom/mopub/network/AdLoader;

    iget-object v1, p0, Lcom/mopub/network/AdLoader$4;->val$adResponse:Lcom/mopub/network/AdResponse;

    invoke-static {v0, v1}, Lcom/mopub/network/AdLoader;->access$400(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V

    return-void
.end method

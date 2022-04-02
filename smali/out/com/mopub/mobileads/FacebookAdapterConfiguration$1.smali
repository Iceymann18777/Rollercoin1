.class Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;
.super Ljava/lang/Object;
.source "FacebookAdapterConfiguration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/FacebookAdapterConfiguration;->refreshBidderToken(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/FacebookAdapterConfiguration;Landroid/content/Context;)V
    .registers 3

    .line 120
    iput-object p1, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;->this$0:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    iput-object p2, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/BidderTokenProvider;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 125
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;->this$0:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-static {v1}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->access$000(Lcom/mopub/mobileads/FacebookAdapterConfiguration;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 127
    :cond_11
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;->this$0:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-static {v0}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->access$100(Lcom/mopub/mobileads/FacebookAdapterConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

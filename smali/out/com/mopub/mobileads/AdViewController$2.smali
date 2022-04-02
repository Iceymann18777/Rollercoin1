.class Lcom/mopub/mobileads/AdViewController$2;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdViewController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdViewController;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$2;->this$0:Lcom/mopub/mobileads/AdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$2;->this$0:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->access$000(Lcom/mopub/mobileads/AdViewController;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 142
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController$2;->this$0:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->resolveAdSize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->setRequestedAdSize(Landroid/graphics/Point;)V

    .line 144
    :cond_11
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$2;->this$0:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->access$100(Lcom/mopub/mobileads/AdViewController;)V

    return-void
.end method

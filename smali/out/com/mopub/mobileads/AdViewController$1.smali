.class Lcom/mopub/mobileads/AdViewController$1;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Lcom/mopub/network/AdLoader$Listener;


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

    .line 126
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$1;->this$0:Lcom/mopub/mobileads/AdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$1;->this$0:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->onAdLoadError(Lcom/mopub/volley/VolleyError;)V

    return-void
.end method

.method public onSuccess(Lcom/mopub/network/AdResponse;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$1;->this$0:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->onAdLoadSuccess(Lcom/mopub/network/AdResponse;)V

    return-void
.end method

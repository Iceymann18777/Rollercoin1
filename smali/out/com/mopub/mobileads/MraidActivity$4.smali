.class Lcom/mopub/mobileads/MraidActivity$4;
.super Ljava/lang/Object;
.source "MraidActivity.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MraidActivity;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidActivity;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/mopub/mobileads/MraidActivity$4;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lcom/mopub/mraid/MraidBridge$MraidWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V
    .registers 4

    if-eqz p2, :cond_7

    .line 263
    iget-object p1, p0, Lcom/mopub/mobileads/MraidActivity$4;->this$0:Lcom/mopub/mobileads/MraidActivity;

    iput-object p2, p1, Lcom/mopub/mobileads/MraidActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    goto :goto_19

    .line 265
    :cond_7
    iget-object p2, p0, Lcom/mopub/mobileads/MraidActivity$4;->this$0:Lcom/mopub/mobileads/MraidActivity;

    new-instance v0, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {v0, p2}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Lcom/mopub/mobileads/MraidActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 266
    iget-object p2, p0, Lcom/mopub/mobileads/MraidActivity$4;->this$0:Lcom/mopub/mobileads/MraidActivity;

    iget-object p2, p2, Lcom/mopub/mobileads/MraidActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$4;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {p2, v0, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;)V

    :goto_19
    return-void
.end method

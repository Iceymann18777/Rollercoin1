.class public final Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$2;
.super Landroid/webkit/WebViewClient;
.source "VastVideoViewControllerTwo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewControllerTwo;->createWebView(Lcom/mopub/mobileads/VastCompanionAdConfigTwo;)Lcom/mopub/mobileads/VastWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_createWebView$inlined:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewControllerTwo;Lcom/mopub/mobileads/VastCompanionAdConfigTwo;)V
    .registers 3

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$2;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$2;->$this_createWebView$inlined:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    .line 452
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$2;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$getVastCompanionAdConfig$p(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2b

    .line 455
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$2;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$2;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfigTwo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-virtual {p1, v1, v0, p2, v2}, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->handleClick(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return v0
.end method

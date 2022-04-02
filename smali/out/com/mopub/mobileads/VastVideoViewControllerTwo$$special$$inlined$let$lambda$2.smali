.class public final Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$2;
.super Landroid/webkit/WebViewClient;
.source "VastVideoViewControllerTwo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewControllerTwo;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $iconConfig$inlined:Lcom/mopub/mobileads/VastIconConfigTwo;

.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastIconConfigTwo;Lcom/mopub/mobileads/VastVideoViewControllerTwo;)V
    .registers 3

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$2;->$iconConfig$inlined:Lcom/mopub/mobileads/VastIconConfigTwo;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$2;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    .line 249
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$2;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfigTwo;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 255
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$2;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$2;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfigTwo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-virtual {p1, v0, p2, v1}, Lcom/mopub/mobileads/VastIconConfigTwo;->handleClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const/4 p1, 0x1

    return p1
.end method

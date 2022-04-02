.class Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;
.super Ljava/lang/Object;
.source "BannerVisibilityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/BannerVisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BannerVisibilityRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/BannerVisibilityTracker;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$000(Lcom/mopub/mobileads/BannerVisibilityTracker;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 207
    :cond_9
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$102(Lcom/mopub/mobileads/BannerVisibilityTracker;Z)Z

    .line 211
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$400(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-static {v1}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$200(Lcom/mopub/mobileads/BannerVisibilityTracker;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-static {v2}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$300(Lcom/mopub/mobileads/BannerVisibilityTracker;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->isVisible(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 213
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$400(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->hasBeenVisibleYet()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 214
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$400(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->setStartTimeMillis()V

    .line 217
    :cond_3c
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$400(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->hasRequiredTimeElapsed()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 218
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$500(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 219
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$500(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;->onVisibilityChanged()V

    .line 220
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$002(Lcom/mopub/mobileads/BannerVisibilityTracker;Z)Z

    .line 226
    :cond_5f
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->access$000(Lcom/mopub/mobileads/BannerVisibilityTracker;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 227
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->scheduleVisibilityCheck()V

    :cond_6c
    return-void
.end method

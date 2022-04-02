.class Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;)V
    .registers 2

    .line 476
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;->this$0:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 479
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;->this$0:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->access$500(Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;)[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_2e

    aget-object v3, v0, v2

    .line 481
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_26

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_19

    goto :goto_26

    .line 489
    :cond_19
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1$1;

    invoke-direct {v5, p0, v3}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1$1;-><init>(Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2b

    .line 482
    :cond_26
    :goto_26
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;->this$0:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->access$600(Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;)V

    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2e
    return-void
.end method

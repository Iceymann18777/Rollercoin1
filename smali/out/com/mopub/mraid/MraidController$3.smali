.class Lcom/mopub/mraid/MraidController$3;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

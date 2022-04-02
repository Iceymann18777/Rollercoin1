.class Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CCHandler"
.end annotation


# instance fields
.field private final mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

.field private final mCaptionWindowLayouts:[Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

.field private mCurrentWindowLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDelayed:Z

.field private final mPendingCaptionEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/Cea708CCParser$CaptionEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;)V
    .registers 3

    .line 482
    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->this$1:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 474
    iput-boolean p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mIsDelayed:Z

    const/16 p1, 0x8

    new-array p1, p1, [Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 476
    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 478
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    .line 483
    iput-object p2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    .line 484
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private clearWindows(I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 592
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 593
    invoke-virtual {v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->clear()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private defineWindow(Landroidx/media2/widget/Cea708CCParser$CaptionWindow;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 662
    :cond_3
    iget v0, p1, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;->id:I

    if-ltz v0, :cond_29

    .line 663
    iget-object v1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    array-length v2, v1

    if-lt v0, v2, :cond_d

    goto :goto_29

    .line 666
    :cond_d
    aget-object v1, v1, v0

    if-nez v1, :cond_1e

    .line 668
    new-instance v1, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    iget-object v2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->this$1:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;

    iget-object v3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v3}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;-><init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V

    .line 670
    :cond_1e
    iget-object v2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v1, v2, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->initWindow(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;Landroidx/media2/widget/Cea708CCParser$CaptionWindow;)V

    .line 671
    iget-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    aput-object v1, p1, v0

    iput-object v1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    :cond_29
    :goto_29
    return-void
.end method

.method private delay(I)V
    .registers 6

    if-ltz p1, :cond_16

    const/16 v0, 0xff

    if-le p1, v0, :cond_7

    goto :goto_16

    :cond_7
    const/4 v0, 0x1

    .line 679
    iput-boolean v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mIsDelayed:Z

    .line 680
    iget-object v1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x64

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_16
    :goto_16
    return-void
.end method

.method private delayCancel()V
    .registers 2

    const/4 v0, 0x0

    .line 685
    iput-boolean v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mIsDelayed:Z

    .line 686
    invoke-direct {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->processPendingBuffer()V

    return-void
.end method

.method private deleteWindows(I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 632
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 633
    invoke-virtual {v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->removeFromCaptionView()V

    .line 634
    iget-object v1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->getCaptionWindowId()I

    move-result v0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_b

    :cond_24
    return-void
.end method

.method private displayWindows(I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 601
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 602
    invoke-virtual {v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->show()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private getWindowsFromBitmap(I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;",
            ">;"
        }
    .end annotation

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1b

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_18

    .line 579
    iget-object v2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    aget-object v2, v2, v1

    if-eqz v2, :cond_18

    .line 581
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1b
    return-object v0
.end method

.method private hideWindows(I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 610
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 611
    invoke-virtual {v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->hide()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private processPendingBuffer()V
    .registers 3

    .line 690
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    .line 691
    invoke-virtual {p0, v1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->processCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_6

    .line 693
    :cond_16
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private sendBufferToCurrentWindow(Ljava/lang/String;)V
    .registers 5

    .line 704
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_19

    .line 705
    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->sendBuffer(Ljava/lang/String;)V

    .line 706
    iget-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 707
    iget-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_19
    return-void
.end method

.method private sendControlToCurrentWindow(C)V
    .registers 3

    .line 698
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_7

    .line 699
    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->sendControl(C)V

    :cond_7
    return-void
.end method

.method private setCurrentWindowLayout(I)V
    .registers 4

    if-ltz p1, :cond_f

    .line 559
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_f

    .line 562
    :cond_8
    aget-object p1, v0, p1

    if-nez p1, :cond_d

    return-void

    .line 569
    :cond_d
    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    :cond_f
    :goto_f
    return-void
.end method

.method private setPenAttr(Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;)V
    .registers 3

    .line 714
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_7

    .line 715
    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setPenAttr(Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;)V

    :cond_7
    return-void
.end method

.method private setPenColor(Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;)V
    .registers 3

    .line 720
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_7

    .line 721
    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setPenColor(Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;)V

    :cond_7
    return-void
.end method

.method private setPenLocation(Landroidx/media2/widget/Cea708CCParser$CaptionPenLocation;)V
    .registers 4

    .line 726
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_b

    .line 727
    iget v1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionPenLocation;->row:I

    iget p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionPenLocation;->column:I

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setPenLocation(II)V

    :cond_b
    return-void
.end method

.method private setWindowAttr(Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;)V
    .registers 3

    .line 653
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_7

    .line 654
    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setWindowAttr(Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;)V

    :cond_7
    return-void
.end method

.method private toggleWindows(I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 619
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 620
    invoke-virtual {v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 621
    invoke-virtual {v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->hide()V

    goto :goto_b

    .line 623
    :cond_21
    invoke-virtual {v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->show()V

    goto :goto_b

    :cond_25
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 489
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    const/16 p1, 0xff

    .line 494
    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->clearWindows(I)V

    return v0

    .line 491
    :cond_10
    invoke-direct {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->delayCancel()V

    return v0
.end method

.method public processCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V
    .registers 3

    .line 501
    iget-boolean v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mIsDelayed:Z

    if-eqz v0, :cond_a

    .line 502
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 505
    :cond_a
    iget v0, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->type:I

    packed-switch v0, :pswitch_data_b0

    goto/16 :goto_ae

    .line 552
    :pswitch_11
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->defineWindow(Landroidx/media2/widget/Cea708CCParser$CaptionWindow;)V

    goto/16 :goto_ae

    .line 549
    :pswitch_1a
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->setWindowAttr(Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;)V

    goto/16 :goto_ae

    .line 546
    :pswitch_23
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/widget/Cea708CCParser$CaptionPenLocation;

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->setPenLocation(Landroidx/media2/widget/Cea708CCParser$CaptionPenLocation;)V

    goto/16 :goto_ae

    .line 543
    :pswitch_2c
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->setPenColor(Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;)V

    goto/16 :goto_ae

    .line 540
    :pswitch_35
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->setPenAttr(Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;)V

    goto/16 :goto_ae

    .line 537
    :pswitch_3e
    invoke-virtual {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->reset()V

    goto/16 :goto_ae

    .line 534
    :pswitch_43
    invoke-direct {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->delayCancel()V

    goto :goto_ae

    .line 531
    :pswitch_47
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->delay(I)V

    goto :goto_ae

    .line 528
    :pswitch_53
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->deleteWindows(I)V

    goto :goto_ae

    .line 525
    :pswitch_5f
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->toggleWindows(I)V

    goto :goto_ae

    .line 522
    :pswitch_6b
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->hideWindows(I)V

    goto :goto_ae

    .line 519
    :pswitch_77
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->displayWindows(I)V

    goto :goto_ae

    .line 516
    :pswitch_83
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->clearWindows(I)V

    goto :goto_ae

    .line 513
    :pswitch_8f
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->setCurrentWindowLayout(I)V

    goto :goto_ae

    .line 510
    :pswitch_9b
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->sendControlToCurrentWindow(C)V

    goto :goto_ae

    .line 507
    :pswitch_a7
    iget-object p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->sendBufferToCurrentWindow(Ljava/lang/String;)V

    :goto_ae
    return-void

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_9b
        :pswitch_8f
        :pswitch_83
        :pswitch_77
        :pswitch_6b
        :pswitch_5f
        :pswitch_53
        :pswitch_47
        :pswitch_43
        :pswitch_3e
        :pswitch_35
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
        :pswitch_11
    .end packed-switch
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    const/4 v1, 0x0

    .line 640
    iput-boolean v1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mIsDelayed:Z

    .line 641
    iget-object v2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_b
    const/16 v2, 0x8

    if-ge v1, v2, :cond_21

    .line 643
    iget-object v2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1a

    .line 644
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->removeFromCaptionView()V

    .line 646
    :cond_1a
    iget-object v2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 648
    :cond_21
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

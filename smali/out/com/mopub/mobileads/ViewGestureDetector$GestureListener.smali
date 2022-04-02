.class Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/ViewGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GestureListener"
.end annotation


# instance fields
.field mIsClicked:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;->mIsClicked:Z

    return-void
.end method


# virtual methods
.method isClicked()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;->mIsClicked:Z

    return v0
.end method

.method onResetUserClick()V
    .registers 2

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;->mIsClicked:Z

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;->mIsClicked:Z

    .line 66
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

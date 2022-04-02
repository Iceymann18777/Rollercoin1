.class public Lcom/mopub/mobileads/ViewGestureDetector;
.super Landroid/view/GestureDetector;
.source "ViewGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;
    }
.end annotation


# instance fields
.field private mGestureListener:Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 20
    new-instance v0, Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;

    invoke-direct {v0}, Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 26
    iput-object p2, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mGestureListener:Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ViewGestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public isClicked()Z
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mGestureListener:Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;

    invoke-virtual {v0}, Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;->isClicked()Z

    move-result v0

    return v0
.end method

.method onResetUserClick()V
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mGestureListener:Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;

    invoke-virtual {v0}, Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;->onResetUserClick()V

    return-void
.end method

.method public setClicked(Z)V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mGestureListener:Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;

    iput-boolean p1, v0, Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;->mIsClicked:Z

    return-void
.end method

.method setGestureListener(Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mGestureListener:Lcom/mopub/mobileads/ViewGestureDetector$GestureListener;

    return-void
.end method

.class Landroidx/media2/widget/SelectiveLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SelectiveLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/SelectiveLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutParams"
.end annotation


# instance fields
.field public forceMatchParent:Z


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 179
    invoke-direct {p0, v0, v0}, Landroidx/media2/widget/SelectiveLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .registers 3

    .line 187
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 191
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

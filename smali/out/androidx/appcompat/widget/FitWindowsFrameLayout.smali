.class public Landroidx/appcompat/widget/FitWindowsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FitWindowsFrameLayout.java"

# interfaces
.implements Landroidx/appcompat/widget/FitWindowsViewGroup;


# instance fields
.field private mListener:Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 3

    .line 51
    iget-object v0, p0, Landroidx/appcompat/widget/FitWindowsFrameLayout;->mListener:Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    if-eqz v0, :cond_7

    .line 52
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;->onFitSystemWindows(Landroid/graphics/Rect;)V

    .line 54
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setOnFitSystemWindowsListener(Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V
    .registers 2

    .line 46
    iput-object p1, p0, Landroidx/appcompat/widget/FitWindowsFrameLayout;->mListener:Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    return-void
.end method

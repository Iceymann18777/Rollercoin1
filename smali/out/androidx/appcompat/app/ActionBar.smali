.class public abstract Landroidx/appcompat/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBar$LayoutParams;,
        Landroidx/appcompat/app/ActionBar$Tab;,
        Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeOptionsMenu()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public abstract getDisplayOptions()I
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateOptionsMenu()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method onDestroy()V
    .registers 1

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public openOptionsMenu()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 2

    return-void
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public setElevation(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6

    return-void

    .line 1022
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 967
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHomeActionContentDescription(I)V
    .registers 2

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .registers 2

    return-void
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

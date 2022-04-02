.class public abstract Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "AppCompatPreferenceActivity.java"


# instance fields
.field private mDelegate:Landroidx/appcompat/app/AppCompatDelegate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 121
    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroidx/appcompat/app/AppCompatCallback;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 123
    :cond_b
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    return-object v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 62
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .line 116
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 99
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->installViewFactory()V

    .line 42
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 111
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 112
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 48
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .registers 2

    .line 87
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 88
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onPostResume()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 105
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 106
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 3

    .line 93
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 94
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .registers 3

    .line 67
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/utils/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

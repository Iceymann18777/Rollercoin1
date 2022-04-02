.class public Lcom/appsgeyser/multiTabApp/ThemingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ThemingActivity.java"


# instance fields
.field cancelString:Ljava/lang/String;
    .annotation runtime Lbutterknife/BindString;
    .end annotation
.end field

.field noAvailableVideoString:Ljava/lang/String;
    .annotation runtime Lbutterknife/BindString;
    .end annotation
.end field

.field noInternetConnectionString:Ljava/lang/String;
    .annotation runtime Lbutterknife/BindString;
    .end annotation
.end field

.field okString:Ljava/lang/String;
    .annotation runtime Lbutterknife/BindString;
    .end annotation
.end field

.field presetsRecycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rewardedVideoThemingString:Ljava/lang/String;
    .annotation runtime Lbutterknife/BindString;
    .end annotation
.end field

.field private themingAdapter:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;

.field private themingLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/ThemingActivity;IZ)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->changeThemeInPrefsByAdapterPosition(IZ)V

    return-void
.end method

.method private changeThemeInPrefsByAdapterPosition(IZ)V
    .registers 7

    .line 135
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 136
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 139
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v0

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    const-string v3, "AppThemeName"

    if-ne v0, v2, :cond_2a

    .line 141
    invoke-static {}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeNoActionBarName:Ljava/lang/String;

    .line 140
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_35

    .line 144
    :cond_2a
    invoke-static {}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeName:Ljava/lang/String;

    .line 143
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    :goto_35
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_3d

    .line 148
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->recreate()V

    :cond_3d
    return-void
.end method

.method public static newThemingIntent(Landroid/content/Context;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Landroid/os/Parcelable;)Landroid/content/Intent;
    .registers 5

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appsgeyser/multiTabApp/ThemingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "configuration"

    .line 53
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "layout_manager_state"

    .line 54
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->setCurrentThemeWithNoActionBar(Landroid/app/Activity;)V

    const p1, 0x7f0d00b7

    .line 62
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->setContentView(I)V

    .line 63
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 66
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f120168

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 67
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 68
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 69
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    .line 75
    :cond_39
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity;->themingLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 76
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity;->presetsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 78
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;

    invoke-static {}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/ThemingActivity$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity$1;-><init>(Lcom/appsgeyser/multiTabApp/ThemingActivity;)V

    invoke-direct {p1, v0, p0, v1}, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;-><init>([Lcom/appsgeyser/multiTabApp/utils/ThemePreset;Landroid/content/Context;Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity;->themingAdapter:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;

    .line 89
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity;->presetsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "layout_manager_state"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 92
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity;->themingLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_6b
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 154
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->recreate()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_b

    const/4 p1, 0x0

    return p1

    .line 126
    :cond_b
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 1

    .line 118
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 119
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 98
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 99
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->onResume(Landroid/content/Context;)V

    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppThemeName"

    const-string v2, "AppThemeDefaultNoActionBar"

    .line 101
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoActionBar"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_29
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->getActivityThemeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 107
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 108
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity;->themingLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 110
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 108
    invoke-static {p0, v0, v1}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->newThemingIntent(Landroid/content/Context;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->finish()V

    .line 112
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4f
    return-void
.end method

.class public Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ThemingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private onClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;

.field private presets:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field private selectedPreset:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;


# direct methods
.method public constructor <init>([Lcom/appsgeyser/multiTabApp/utils/ThemePreset;Landroid/content/Context;Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->presets:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 33
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->onClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;

    .line 35
    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->getActivityThemeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->findByNoActionBarName(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->selectedPreset:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    return-void
.end method

.method private checkSelectedPreset(Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;I)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->presets:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    aget-object p2, v0, p2

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->selectedPreset:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    invoke-virtual {p2, v0}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 59
    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->presetSelectedRadioButton:Landroid/widget/RadioButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_19

    .line 61
    :cond_13
    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->presetSelectedRadioButton:Landroid/widget/RadioButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_19
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->presets:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 21
    check-cast p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->onBindViewHolder(Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;I)V
    .registers 6

    .line 47
    iget-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->presetSelectedRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->presets:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeTitleId:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 48
    iget-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorAccentImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->presets:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    aget-object v2, v2, p2

    iget v2, v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeColorAccentId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 50
    iget-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorPrimaryImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->context:Landroid/content/Context;

    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->presets:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    aget-object v2, v2, p2

    iget v2, v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeColorPrimaryId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 52
    iget-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorPrimaryDarkImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->context:Landroid/content/Context;

    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->presets:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    aget-object v2, v2, p2

    iget v2, v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeColorPrimaryDarkId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->checkSelectedPreset(Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;
    .registers 5

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d003f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;->onClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;

    invoke-direct {p2, p1, v0}, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;)V

    return-object p2
.end method

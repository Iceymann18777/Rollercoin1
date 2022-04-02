.class public Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ThemingAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;

.field private view7f0a0095:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;Landroid/view/View;)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;

    .line 27
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0a0099

    const-string v2, "field \'presetSelectedRadioButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->presetSelectedRadioButton:Landroid/widget/RadioButton;

    .line 28
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0096

    const-string v2, "field \'colorAccentImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorAccentImageView:Landroid/widget/ImageView;

    .line 29
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0097

    const-string v2, "field \'colorPrimaryImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorPrimaryImageView:Landroid/widget/ImageView;

    .line 30
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0098

    const-string v2, "field \'colorPrimaryDarkImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorPrimaryDarkImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0095

    const-string v1, "method \'themeSelected\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;->view7f0a0095:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

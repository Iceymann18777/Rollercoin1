.class public Lcom/appsgeyser/multiTabApp/ThemingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ThemingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/appsgeyser/multiTabApp/ThemingActivity;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/ThemingActivity;Landroid/view/View;)V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/ThemingActivity;

    .line 28
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0211

    const-string v2, "field \'presetsRecycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->presetsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0a0212

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12011e

    .line 33
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->noAvailableVideoString:Ljava/lang/String;

    const v0, 0x7f120120

    .line 34
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->noInternetConnectionString:Ljava/lang/String;

    const v0, 0x7f120143

    .line 35
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->rewardedVideoThemingString:Ljava/lang/String;

    const v0, 0x104000a

    .line 36
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->okString:Ljava/lang/String;

    const/high16 v0, 0x1040000

    .line 37
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->cancelString:Ljava/lang/String;

    return-void
.end method

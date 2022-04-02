.class Lcom/appsgeyser/multiTabApp/ThemingActivity$1;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ThemingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ThemingActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ThemingActivity;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/ThemingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadioButtonClicked(I)V
    .registers 4

    .line 82
    invoke-static {}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/ThemingActivity;

    .line 83
    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->getActivityThemeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->findByNoActionBarName(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 85
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/ThemingActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->access$000(Lcom/appsgeyser/multiTabApp/ThemingActivity;IZ)V

    :cond_1c
    return-void
.end method

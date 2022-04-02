.class Lcom/appsgeyser/multiTabApp/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/SettingsActivity;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    const-string p1, "hide_url_bar"

    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "hide_tab_bar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 80
    :cond_10
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getWebContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 82
    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;->showNavigationBars()V

    :cond_1d
    const-string p1, "show_quick_access_bar"

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 87
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/SettingsActivity;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->access$000(Lcom/appsgeyser/multiTabApp/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 89
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->createNotice()V

    goto :goto_49

    .line 91
    :cond_3e
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->deleteNotice()V

    :cond_49
    :goto_49
    return-void
.end method

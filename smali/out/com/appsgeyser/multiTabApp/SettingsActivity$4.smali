.class Lcom/appsgeyser/multiTabApp/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    .line 116
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$4;->this$0:Lcom/appsgeyser/multiTabApp/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 2

    .line 119
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$4;->this$0:Lcom/appsgeyser/multiTabApp/SettingsActivity;

    invoke-static {p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->showAboutDialog(Landroid/app/Activity;)V

    const/4 p1, 0x0

    return p1
.end method

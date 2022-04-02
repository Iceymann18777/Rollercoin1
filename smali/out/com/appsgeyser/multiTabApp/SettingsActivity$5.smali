.class Lcom/appsgeyser/multiTabApp/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;


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

.field final synthetic val$aboutCategory:Landroid/preference/PreferenceCategory;

.field final synthetic val$aboutPreference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/SettingsActivity;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V
    .registers 4

    .line 123
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$5;->this$0:Lcom/appsgeyser/multiTabApp/SettingsActivity;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$5;->val$aboutCategory:Landroid/preference/PreferenceCategory;

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$5;->val$aboutPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogEnableReceived(Z)V
    .registers 3

    if-eqz p1, :cond_a

    .line 127
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$5;->val$aboutCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$5;->val$aboutPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_11

    .line 129
    :cond_a
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$5;->val$aboutCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$5;->val$aboutPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_11
    return-void
.end method

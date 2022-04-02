.class Lcom/appsgeyser/multiTabApp/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

.field final synthetic val$timeTo:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/SettingsActivity;Landroid/preference/Preference;)V
    .registers 3

    .line 107
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/SettingsActivity;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$3;->val$timeTo:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 110
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$3;->val$timeTo:Landroid/preference/Preference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return p1
.end method

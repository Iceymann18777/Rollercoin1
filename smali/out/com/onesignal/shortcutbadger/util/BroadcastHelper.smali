.class public Lcom/onesignal/shortcutbadger/util/BroadcastHelper;
.super Ljava/lang/Object;
.source "BroadcastHelper.java"


# direct methods
.method public static canResolveBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

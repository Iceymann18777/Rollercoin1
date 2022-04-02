.class Lcom/onesignal/OneSignalChromeTab;
.super Ljava/lang/Object;
.source "OneSignalChromeTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;
    }
.end annotation


# direct methods
.method private static hasChromeTabLibrary()Z
    .registers 1

    .line 45
    :try_start_0
    const-class v0, Landroidx/browser/customtabs/CustomTabsServiceConnection;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_4

    const/4 v0, 0x1

    return v0

    :catchall_4
    const/4 v0, 0x0

    return v0
.end method

.method protected static open(Ljava/lang/String;Z)Z
    .registers 3

    .line 52
    invoke-static {}, Lcom/onesignal/OneSignalChromeTab;->hasChromeTabLibrary()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 55
    :cond_8
    new-instance v0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;-><init>(Ljava/lang/String;Z)V

    .line 56
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string p1, "com.android.chrome"

    invoke-static {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result p0

    return p0
.end method

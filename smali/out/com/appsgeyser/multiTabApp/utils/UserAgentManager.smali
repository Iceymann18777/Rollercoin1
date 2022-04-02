.class public Lcom/appsgeyser/multiTabApp/utils/UserAgentManager;
.super Ljava/lang/Object;
.source "UserAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/utils/UserAgentManager$NewApiWrapper;
    }
.end annotation


# direct methods
.method public static getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 20
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/UserAgentManager$NewApiWrapper;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_b
    :try_start_b
    const-class v0, Landroid/webkit/WebSettings;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/WebView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_3b

    :try_start_21
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const/4 v2, 0x0

    aput-object v2, v1, v5

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebSettings;

    .line 28
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_36

    .line 30
    :try_start_32
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    return-object v1

    :catchall_36
    move-exception v1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 31
    throw v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3b} :catch_3b

    .line 33
    :catch_3b
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDesktopUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f12006e

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

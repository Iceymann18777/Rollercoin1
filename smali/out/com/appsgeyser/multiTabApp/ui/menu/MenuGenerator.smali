.class public Lcom/appsgeyser/multiTabApp/ui/menu/MenuGenerator;
.super Ljava/lang/Object;
.source "MenuGenerator.java"


# direct methods
.method public static newEmptyMenuInstance(Landroid/content/Context;)Landroid/view/Menu;
    .registers 6

    :try_start_0
    const-string v0, "com.android.internal.view.menu.MenuBuilder"

    .line 13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 15
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Menu;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

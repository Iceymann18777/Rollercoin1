.class public final Lcom/onesignal/shortcutbadger/ShortcutBadger;
.super Ljava/lang/Object;
.source "ShortcutBadger.java"


# static fields
.field private static final BADGERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/onesignal/shortcutbadger/Badger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sComponentName:Landroid/content/ComponentName;

.field private static final sCounterSupportedLock:Ljava/lang/Object;

.field private static sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sCounterSupportedLock:Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/AdwHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/ApexHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/NewHtcHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/NovaHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/AsusHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/HuaweiHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/ZukHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/VivoHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/EverythingMeHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static applyCountOrThrow(Landroid/content/Context;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    if-nez v0, :cond_13

    .line 91
    invoke-static {p0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->initBadger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 94
    :cond_b
    new-instance p0, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;

    const-string p1, "No default launcher available"

    invoke-direct {p0, p1}, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_13
    :goto_13
    :try_start_13
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    sget-object v1, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, p0, v1, p1}, Lcom/onesignal/shortcutbadger/Badger;->executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    .line 100
    new-instance p1, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;

    const-string v0, "Unable to execute badge"

    invoke-direct {p1, v0, p0}, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private static initBadger(Landroid/content/Context;)Z
    .registers 4

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find launch intent for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShortcutBadger"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 196
    :cond_2a
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sComponentName:Landroid/content/ComponentName;

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 199
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x10000

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_cb

    .line 202
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "resolver"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto/16 :goto_cb

    .line 205
    :cond_5a
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 207
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x0

    .line 210
    :try_start_71
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/shortcutbadger/Badger;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_77} :catch_79

    move-object v2, v1

    goto :goto_7a

    :catch_79
    nop

    :goto_7a
    if-eqz v2, :cond_64

    .line 213
    invoke-interface {v2}, Lcom/onesignal/shortcutbadger/Badger;->getSupportLaunchers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 214
    sput-object v2, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    .line 219
    :cond_88
    sget-object p0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    if-nez p0, :cond_c9

    .line 220
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "ZUK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9e

    .line 221
    new-instance p0, Lcom/onesignal/shortcutbadger/impl/ZukHomeBadger;

    invoke-direct {p0}, Lcom/onesignal/shortcutbadger/impl/ZukHomeBadger;-><init>()V

    sput-object p0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    goto :goto_c9

    .line 222
    :cond_9e
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "OPPO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b0

    .line 223
    new-instance p0, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;

    invoke-direct {p0}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;-><init>()V

    sput-object p0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    goto :goto_c9

    .line 224
    :cond_b0
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "VIVO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c2

    .line 225
    new-instance p0, Lcom/onesignal/shortcutbadger/impl/VivoHomeBadger;

    invoke-direct {p0}, Lcom/onesignal/shortcutbadger/impl/VivoHomeBadger;-><init>()V

    sput-object p0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    goto :goto_c9

    .line 227
    :cond_c2
    new-instance p0, Lcom/onesignal/shortcutbadger/impl/DefaultBadger;

    invoke-direct {p0}, Lcom/onesignal/shortcutbadger/impl/DefaultBadger;-><init>()V

    sput-object p0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    :cond_c9
    :goto_c9
    const/4 p0, 0x1

    return p0

    :cond_cb
    :goto_cb
    return v1
.end method

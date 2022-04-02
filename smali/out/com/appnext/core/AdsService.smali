.class public Lcom/appnext/core/AdsService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/core/AdsService$a;
    }
.end annotation


# static fields
.field public static final ADD_PACK:I = 0x209c

.field public static final START_APP:I = 0x209a

.field private static gf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/appnext/core/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gg:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appnext/core/AdsService;->gf:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "AdsService"

    .line 45
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/appnext/core/AdsService$a;

    invoke-direct {v1, p0}, Lcom/appnext/core/AdsService$a;-><init>(Lcom/appnext/core/AdsService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/appnext/core/AdsService;->mMessenger:Landroid/os/Messenger;

    .line 137
    new-instance v0, Lcom/appnext/core/AdsService$2;

    invoke-direct {v0, p0}, Lcom/appnext/core/AdsService$2;-><init>(Lcom/appnext/core/AdsService;)V

    iput-object v0, p0, Lcom/appnext/core/AdsService;->gg:Ljava/lang/Runnable;

    return-void
.end method

.method private Q(Ljava/lang/String;)Z
    .registers 4

    .line 102
    invoke-virtual {p0}, Lcom/appnext/core/AdsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 104
    :try_start_6
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    const/4 p1, 0x1

    return p1

    :catch_b
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/appnext/core/AdsService;)Landroid/os/Handler;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/appnext/core/AdsService;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 91
    sget-object v0, Lcom/appnext/core/AdsService;->gf:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/n;

    if-nez v0, :cond_e

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lcom/appnext/core/AdsService;->addPack(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    .line 96
    :cond_e
    iput-object p2, v0, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    .line 98
    sget-object p2, Lcom/appnext/core/AdsService;->gf:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/appnext/core/AdsService;Ljava/lang/String;)Z
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/appnext/core/AdsService;->Q(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic aX()Ljava/util/HashMap;
    .registers 1

    .line 18
    sget-object v0, Lcom/appnext/core/AdsService;->gf:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/appnext/core/AdsService;)Ljava/lang/Runnable;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/appnext/core/AdsService;->gg:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected final declared-synchronized a(Lcom/appnext/core/n;)V
    .registers 4

    monitor-enter p0

    .line 112
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/core/AdsService$1;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/AdsService$1;-><init>(Lcom/appnext/core/AdsService;Lcom/appnext/core/n;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 135
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addPack(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 6

    .line 70
    sget-object v0, Lcom/appnext/core/AdsService;->gf:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appnext/core/AdsService;->gf:Ljava/util/HashMap;

    .line 72
    :cond_b
    sget-object v0, Lcom/appnext/core/AdsService;->gf:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1091
    sget-object v0, Lcom/appnext/core/AdsService;->gf:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/n;

    if-nez v0, :cond_21

    .line 1093
    invoke-virtual {p0, p1, p2, p3}, Lcom/appnext/core/AdsService;->addPack(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    .line 1096
    :cond_21
    iput-object p2, v0, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    .line 1098
    sget-object p2, Lcom/appnext/core/AdsService;->gf:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 77
    :cond_29
    new-instance p3, Lcom/appnext/core/n;

    invoke-direct {p3}, Lcom/appnext/core/n;-><init>()V

    .line 78
    iput-object p1, p3, Lcom/appnext/core/n;->am:Ljava/lang/String;

    .line 80
    iput-object p2, p3, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    .line 81
    sget-object p2, Lcom/appnext/core/AdsService;->gf:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_49

    .line 84
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    .line 85
    iget-object p2, p0, Lcom/appnext/core/AdsService;->gg:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_49
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 175
    iget-object p1, p0, Lcom/appnext/core/AdsService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 50
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 55
    sget-object v0, Lcom/appnext/core/AdsService;->gf:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 56
    iget-object v0, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    :cond_10
    iput-object v1, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 6

    const-string v0, "added_info"

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x209c

    if-ne v0, v1, :cond_2e

    const-string v0, "package"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "receiver"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    invoke-virtual {p0, v1, v2, v3}, Lcom/appnext/core/AdsService;->addPack(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.class public Lcom/startapp/common/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static b:Lcom/startapp/common/c;


# instance fields
.field protected a:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "e106"

    .line 15
    iput-object v0, p0, Lcom/startapp/common/c;->a:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/startapp/common/c;->c()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/common/c;->d:Landroid/telephony/PhoneStateListener;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/common/c;->c:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/startapp/common/c;
    .registers 1

    .line 44
    sget-object v0, Lcom/startapp/common/c;->b:Lcom/startapp/common/c;

    return-object v0
.end method

.method private a(Landroid/content/Context;I)V
    .registers 4

    :try_start_0
    const-string v0, "phone"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 32
    iget-object v0, p0, Lcom/startapp/common/c;->d:Landroid/telephony/PhoneStateListener;

    invoke-virtual {p1, v0, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method

.method private c()Landroid/telephony/PhoneStateListener;
    .registers 2

    .line 59
    :try_start_0
    new-instance v0, Lcom/startapp/common/c$1;

    invoke-direct {v0, p0}, Lcom/startapp/common/c$1;-><init>(Lcom/startapp/common/c;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    .line 37
    sget-object v0, Lcom/startapp/common/c;->b:Lcom/startapp/common/c;

    if-nez v0, :cond_12

    .line 38
    new-instance v0, Lcom/startapp/common/c;

    invoke-direct {v0, p0}, Lcom/startapp/common/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/startapp/common/c;->b:Lcom/startapp/common/c;

    .line 39
    invoke-static {}, Lcom/startapp/common/c;->a()Lcom/startapp/common/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/common/c;->a(Landroid/content/Context;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    const/16 v0, 0x100

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/startapp/common/c;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/startapp/common/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/startapp/common/c;->a(Landroid/content/Context;I)V

    return-void
.end method

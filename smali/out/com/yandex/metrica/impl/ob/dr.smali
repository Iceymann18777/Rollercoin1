.class public Lcom/yandex/metrica/impl/ob/dr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/yandex/metrica/impl/ob/dr;


# instance fields
.field private c:Lcom/yandex/metrica/impl/ob/dp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/dr;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/dp;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/dp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dr;->c:Lcom/yandex/metrica/impl/ob/dp;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/dr;
    .registers 3

    .line 24
    sget-object v0, Lcom/yandex/metrica/impl/ob/dr;->b:Lcom/yandex/metrica/impl/ob/dr;

    if-nez v0, :cond_17

    .line 25
    sget-object v0, Lcom/yandex/metrica/impl/ob/dr;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/impl/ob/dr;->b:Lcom/yandex/metrica/impl/ob/dr;

    if-nez v1, :cond_12

    .line 27
    new-instance v1, Lcom/yandex/metrica/impl/ob/dr;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/dr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/dr;->b:Lcom/yandex/metrica/impl/ob/dr;

    .line 29
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 31
    :cond_17
    :goto_17
    sget-object p0, Lcom/yandex/metrica/impl/ob/dr;->b:Lcom/yandex/metrica/impl/ob/dr;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dr;->c:Lcom/yandex/metrica/impl/ob/dp;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dp;->b()V

    return-void
.end method

.method public b()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dr;->c:Lcom/yandex/metrica/impl/ob/dp;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dp;->a()V

    return-void
.end method

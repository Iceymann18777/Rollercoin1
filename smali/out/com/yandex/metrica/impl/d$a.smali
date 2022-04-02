.class public Lcom/yandex/metrica/impl/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:J


# instance fields
.field private b:J

.field private c:J

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/d$a;->a:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 28
    sget-wide v0, Lcom/yandex/metrica/impl/d$a;->a:J

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/d$a;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/yandex/metrica/impl/d$a;->c:J

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/yandex/metrica/impl/d$a;->d:Ljava/lang/Object;

    .line 32
    iput-wide p1, p0, Lcom/yandex/metrica/impl/d$a;->b:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/d$a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/d$a;->d:Ljava/lang/Object;

    .line 1054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/d$a;->c:J

    return-void
.end method

.method public final b()Z
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/d$a;->d:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .registers 7

    .line 63
    iget-wide v0, p0, Lcom/yandex/metrica/impl/d$a;->b:J

    .line 1058
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/metrica/impl/d$a;->c:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_16

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    return v0

    :cond_16
    :goto_16
    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/d$a;->d:Ljava/lang/Object;

    return-object v0
.end method

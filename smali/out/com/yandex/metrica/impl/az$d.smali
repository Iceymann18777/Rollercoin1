.class public Lcom/yandex/metrica/impl/az$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/h;

.field private b:Lcom/yandex/metrica/impl/aw;

.field private c:Z

.field private d:Lcom/yandex/metrica/impl/az$c;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/aw;)V
    .registers 4

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/az$d;->c:Z

    .line 168
    iput-object p1, p0, Lcom/yandex/metrica/impl/az$d;->a:Lcom/yandex/metrica/impl/h;

    .line 169
    iput-object p2, p0, Lcom/yandex/metrica/impl/az$d;->b:Lcom/yandex/metrica/impl/aw;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/az$d;)Lcom/yandex/metrica/impl/aw;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/yandex/metrica/impl/az$d;->b:Lcom/yandex/metrica/impl/aw;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/az$d;)Lcom/yandex/metrica/impl/h;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/yandex/metrica/impl/az$d;->a:Lcom/yandex/metrica/impl/h;

    return-object p0
.end method


# virtual methods
.method a()Lcom/yandex/metrica/impl/aw;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/yandex/metrica/impl/az$d;->b:Lcom/yandex/metrica/impl/aw;

    return-object v0
.end method

.method a(Lcom/yandex/metrica/impl/az$c;)Lcom/yandex/metrica/impl/az$d;
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/yandex/metrica/impl/az$d;->d:Lcom/yandex/metrica/impl/az$c;

    return-object p0
.end method

.method a(Z)Lcom/yandex/metrica/impl/az$d;
    .registers 2

    .line 178
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/az$d;->c:Z

    return-object p0
.end method

.method b()Lcom/yandex/metrica/impl/h;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/yandex/metrica/impl/az$d;->d:Lcom/yandex/metrica/impl/az$c;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/yandex/metrica/impl/az$d;->a:Lcom/yandex/metrica/impl/h;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/az$c;->a(Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/yandex/metrica/impl/az$d;->a:Lcom/yandex/metrica/impl/h;

    return-object v0
.end method

.method c()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/az$d;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportToSend{mReport="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/az$d;->a:Lcom/yandex/metrica/impl/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEnvironment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/az$d;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCrash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/az$d;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/az$d;->d:Lcom/yandex/metrica/impl/az$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

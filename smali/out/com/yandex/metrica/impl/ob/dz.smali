.class public final Lcom/yandex/metrica/impl/ob/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/dz$e;,
        Lcom/yandex/metrica/impl/ob/dz$d;,
        Lcom/yandex/metrica/impl/ob/dz$a;,
        Lcom/yandex/metrica/impl/ob/dz$c;,
        Lcom/yandex/metrica/impl/ob/dz$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private final b:Ljava/lang/Integer;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/Integer;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:I

.field private final j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Integer;)V
    .registers 11

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dz;->b:Ljava/lang/Integer;

    .line 147
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dz;->c:Ljava/lang/Integer;

    .line 148
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/dz;->d:Ljava/lang/Integer;

    .line 149
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/dz;->e:Ljava/lang/Integer;

    .line 150
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/dz;->f:Ljava/lang/String;

    .line 151
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/dz;->g:Ljava/lang/String;

    .line 152
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/dz;->a:Ljava/lang/Integer;

    .line 153
    iput-boolean p8, p0, Lcom/yandex/metrica/impl/ob/dz;->h:Z

    .line 154
    iput p9, p0, Lcom/yandex/metrica/impl/ob/dz;->i:I

    .line 155
    iput-object p10, p0, Lcom/yandex/metrica/impl/ob/dz;->j:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dz;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dz;->a:Ljava/lang/Integer;

    return-void
.end method

.method public b()Ljava/lang/Integer;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dz;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dz;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dz;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dz;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dz;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .registers 2

    .line 210
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dz;->h:Z

    return v0
.end method

.method public i()I
    .registers 2

    .line 218
    iget v0, p0, Lcom/yandex/metrica/impl/ob/dz;->i:I

    return v0
.end method

.method public j()Ljava/lang/Integer;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dz;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellDescription{mSignalStrength="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dz;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMobileCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dz;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMobileNetworkCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dz;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocationAreaCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dz;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCellId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dz;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOperatorName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dz;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mNetworkType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dz;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/dz;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCellType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yandex/metrica/impl/ob/dz;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dz;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

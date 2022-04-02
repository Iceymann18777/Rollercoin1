.class Lcom/yandex/metrica/impl/bg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bg$a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/bg$a$a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/yandex/metrica/impl/ob/dt;

.field private o:Lcom/yandex/metrica/impl/ob/ds;

.field private p:Z

.field private q:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/yandex/metrica/impl/ob/dt;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dt;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->n:Lcom/yandex/metrica/impl/ob/dt;

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->o:Lcom/yandex/metrica/impl/ob/ds;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/bg$a$a;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->a:Lcom/yandex/metrica/impl/bg$a$a;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/ds;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->o:Lcom/yandex/metrica/impl/ob/ds;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/dt;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->n:Lcom/yandex/metrica/impl/ob/dt;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->f:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->e:Ljava/util/List;

    return-void
.end method

.method a(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bg$a;->b:Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bg$a;->b:Z

    return v0
.end method

.method b(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->g:Ljava/lang/String;

    return-void
.end method

.method b(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bg$a;->c:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bg$a;->c:Z

    return v0
.end method

.method c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->e:Ljava/util/List;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->h:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 221
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bg$a;->d:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->j:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .registers 2

    .line 233
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bg$a;->p:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->k:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .registers 2

    .line 241
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bg$a;->q:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method f(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->l:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method g(Ljava/lang/String;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->m:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/yandex/metrica/impl/bg$a;->i:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/yandex/metrica/impl/bg$a$a;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->a:Lcom/yandex/metrica/impl/bg$a$a;

    return-object v0
.end method

.method public l()Lcom/yandex/metrica/impl/ob/dt;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->n:Lcom/yandex/metrica/impl/ob/dt;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bg$a;->d:Z

    return v0
.end method

.method public o()Lcom/yandex/metrica/impl/ob/ds;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/yandex/metrica/impl/bg$a;->o:Lcom/yandex/metrica/impl/ob/ds;

    return-object v0
.end method

.method public p()Z
    .registers 2

    .line 237
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bg$a;->p:Z

    return v0
.end method

.method public q()Z
    .registers 2

    .line 245
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bg$a;->q:Z

    return v0
.end method

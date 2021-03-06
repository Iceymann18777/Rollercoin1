.class public final Lrx/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Notification$Kind;
    }
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
.field private static final ON_COMPLETED:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final kind:Lrx/Notification$Kind;

.field private final throwable:Ljava/lang/Throwable;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sput-object v0, Lrx/Notification;->ON_COMPLETED:Lrx/Notification;

    return-void
.end method

.method private constructor <init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification$Kind;",
            "TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lrx/Notification;->value:Ljava/lang/Object;

    .line 81
    iput-object p3, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    .line 82
    iput-object p1, p0, Lrx/Notification;->kind:Lrx/Notification$Kind;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 215
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v0

    .line 219
    :cond_13
    check-cast p1, Lrx/Notification;

    .line 220
    invoke-virtual {p1}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v2

    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v3

    if-ne v2, v3, :cond_3c

    iget-object v2, p0, Lrx/Notification;->value:Ljava/lang/Object;

    iget-object v3, p1, Lrx/Notification;->value:Ljava/lang/Object;

    if-eq v2, v3, :cond_2d

    if-eqz v2, :cond_3c

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_2d
    iget-object v2, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    iget-object p1, p1, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    if-eq v2, p1, :cond_3b

    if-eqz v2, :cond_3c

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    :cond_3b
    const/4 v0, 0x1

    :cond_3c
    return v0
.end method

.method public getKind()Lrx/Notification$Kind;
    .registers 2

    .line 128
    iget-object v0, p0, Lrx/Notification;->kind:Lrx/Notification$Kind;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 91
    iget-object v0, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lrx/Notification;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasThrowable()Z
    .registers 2

    .line 119
    invoke-virtual {p0}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasValue()Z
    .registers 2

    .line 109
    invoke-virtual {p0}, Lrx/Notification;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lrx/Notification;->value:Ljava/lang/Object;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 195
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Notification$Kind;->hashCode()I

    move-result v0

    .line 196
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_19

    mul-int/lit8 v0, v0, 0x1f

    .line 197
    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_19
    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_2a

    mul-int/lit8 v0, v0, 0x1f

    .line 200
    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2a
    return v0
.end method

.method public isOnError()Z
    .registers 3

    .line 137
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isOnNext()Z
    .registers 3

    .line 155
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    :cond_2f
    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    const/16 v1, 0x5d

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

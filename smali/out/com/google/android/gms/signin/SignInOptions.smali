.class public final Lcom/google/android/gms/signin/SignInOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/signin/SignInOptions$zaa;
    }
.end annotation


# static fields
.field public static final zaa:Lcom/google/android/gms/signin/SignInOptions;


# instance fields
.field private final zab:Z

.field private final zac:Z

.field private final zad:Ljava/lang/String;

.field private final zae:Z

.field private final zaf:Ljava/lang/String;

.field private final zag:Ljava/lang/String;

.field private final zah:Z

.field private final zai:Ljava/lang/Long;

.field private final zaj:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 39
    new-instance v0, Lcom/google/android/gms/signin/SignInOptions$zaa;

    invoke-direct {v0}, Lcom/google/android/gms/signin/SignInOptions$zaa;-><init>()V

    .line 40
    new-instance v0, Lcom/google/android/gms/signin/SignInOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    .line 41
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/signin/SignInOptions;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 42
    sput-object v0, Lcom/google/android/gms/signin/SignInOptions;->zaa:Lcom/google/android/gms/signin/SignInOptions;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->zab:Z

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->zac:Z

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->zad:Ljava/lang/String;

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->zae:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->zah:Z

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->zaf:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->zag:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->zai:Ljava/lang/Long;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->zaj:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 14
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/signin/SignInOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 16
    :cond_a
    check-cast p1, Lcom/google/android/gms/signin/SignInOptions;

    .line 17
    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zab:Z

    iget-boolean v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zab:Z

    if-ne v1, v3, :cond_57

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zac:Z

    iget-boolean v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zac:Z

    if-ne v1, v3, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zad:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zad:Ljava/lang/String;

    .line 18
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zae:Z

    iget-boolean v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zae:Z

    if-ne v1, v3, :cond_57

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zah:Z

    iget-boolean v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zah:Z

    if-ne v1, v3, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zaf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zaf:Ljava/lang/String;

    .line 19
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zag:Ljava/lang/String;

    .line 20
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zai:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zai:Ljava/lang/Long;

    .line 21
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zaj:Ljava/lang/Long;

    iget-object p1, p1, Lcom/google/android/gms/signin/SignInOptions;->zaj:Ljava/lang/Long;

    .line 22
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    return v0

    :cond_57
    return v2
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zab:Z

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zac:Z

    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zad:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zae:Z

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zah:Z

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zaf:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zag:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zai:Ljava/lang/Long;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zaj:Ljava/lang/Long;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zaa()Z
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zab:Z

    return v0
.end method

.method public final zab()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zac:Z

    return v0
.end method

.method public final zac()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zad:Ljava/lang/String;

    return-object v0
.end method

.method public final zad()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zae:Z

    return v0
.end method

.method public final zae()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zaf:Ljava/lang/String;

    return-object v0
.end method

.method public final zaf()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zag:Ljava/lang/String;

    return-object v0
.end method

.method public final zag()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zah:Z

    return v0
.end method

.method public final zah()Ljava/lang/Long;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zai:Ljava/lang/Long;

    return-object v0
.end method

.method public final zai()Ljava/lang/Long;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zaj:Ljava/lang/Long;

    return-object v0
.end method

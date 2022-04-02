.class public Lcom/tappx/a/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/tappx/sdk/android/AdRequest$Gender;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_4
    sget-object v0, Lcom/tappx/a/k0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    .line 23
    sget-object p1, Lcom/tappx/a/k0;->a:Ljava/lang/String;

    return-object p1

    :cond_18
    const-string p1, "O"

    return-object p1

    :cond_1b
    const-string p1, "F"

    return-object p1

    :cond_1e
    const-string p1, "M"

    return-object p1
.end method

.method private a(Lcom/tappx/sdk/android/AdRequest$MaritalStatus;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_4
    sget-object v0, Lcom/tappx/a/k0$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1e

    .line 37
    sget-object p1, Lcom/tappx/a/k0;->b:Ljava/lang/String;

    return-object p1

    :cond_1e
    const-string p1, "W"

    return-object p1

    :cond_21
    const-string p1, "D"

    return-object p1

    :cond_24
    const-string p1, "M"

    return-object p1

    :cond_27
    const-string p1, "L"

    return-object p1

    :cond_2a
    const-string p1, "S"

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/tappx/a/v1;Ljava/lang/String;Lcom/tappx/sdk/android/AdRequest;)Lcom/tappx/a/b2;
    .registers 6

    .line 1
    new-instance v0, Lcom/tappx/a/b2;

    invoke-direct {v0}, Lcom/tappx/a/b2;-><init>()V

    .line 2
    invoke-virtual {v0, p3}, Lcom/tappx/a/b2;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/tappx/a/v1;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/tappx/a/b2;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/tappx/a/b2;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p4}, Lcom/tappx/sdk/android/AdRequest;->getSdkType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tappx/a/b2;->h(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p4}, Lcom/tappx/sdk/android/AdRequest;->getMediator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tappx/a/b2;->g(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p4}, Lcom/tappx/sdk/android/AdRequest;->getKeywords()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tappx/a/b2;->e(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p4}, Lcom/tappx/sdk/android/AdRequest;->getYearOfBirth()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tappx/a/b2;->b(I)V

    .line 10
    invoke-virtual {p4}, Lcom/tappx/sdk/android/AdRequest;->getAge()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tappx/a/b2;->a(I)V

    .line 11
    invoke-virtual {p4}, Lcom/tappx/sdk/android/AdRequest;->getGender()Lcom/tappx/sdk/android/AdRequest$Gender;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tappx/a/k0;->a(Lcom/tappx/sdk/android/AdRequest$Gender;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tappx/a/b2;->d(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p4}, Lcom/tappx/sdk/android/AdRequest;->getMaritalStatus()Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tappx/a/k0;->a(Lcom/tappx/sdk/android/AdRequest$MaritalStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tappx/a/b2;->f(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p4}, Lcom/tappx/sdk/android/AdRequest;->isUseTestAds()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tappx/a/b2;->a(Z)V

    return-object v0
.end method

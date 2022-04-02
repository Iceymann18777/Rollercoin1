.class public final Lcom/tappx/sdk/android/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/sdk/android/AdRequest$MaritalStatus;,
        Lcom/tappx/sdk/android/AdRequest$Gender;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lcom/tappx/sdk/android/AdRequest$Gender;

.field private g:Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "native"

    .line 11
    iput-object v0, p0, Lcom/tappx/sdk/android/AdRequest;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/tappx/sdk/android/AdRequest;->b:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/tappx/sdk/android/AdRequest;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/tappx/sdk/android/AdRequest;->d:I

    .line 15
    iput v0, p0, Lcom/tappx/sdk/android/AdRequest;->e:I

    .line 16
    sget-object v0, Lcom/tappx/sdk/android/AdRequest$Gender;->UNKNOWN:Lcom/tappx/sdk/android/AdRequest$Gender;

    iput-object v0, p0, Lcom/tappx/sdk/android/AdRequest;->f:Lcom/tappx/sdk/android/AdRequest$Gender;

    .line 17
    sget-object v0, Lcom/tappx/sdk/android/AdRequest$MaritalStatus;->UNKNOWN:Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    iput-object v0, p0, Lcom/tappx/sdk/android/AdRequest;->g:Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    return-void
.end method


# virtual methods
.method public age(I)Lcom/tappx/sdk/android/AdRequest;
    .registers 2

    .line 1
    iput p1, p0, Lcom/tappx/sdk/android/AdRequest;->e:I

    return-object p0
.end method

.method public gender(Lcom/tappx/sdk/android/AdRequest$Gender;)Lcom/tappx/sdk/android/AdRequest;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/sdk/android/AdRequest;->f:Lcom/tappx/sdk/android/AdRequest$Gender;

    return-object p0
.end method

.method public getAge()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/sdk/android/AdRequest;->e:I

    return v0
.end method

.method public getGender()Lcom/tappx/sdk/android/AdRequest$Gender;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/AdRequest;->f:Lcom/tappx/sdk/android/AdRequest$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/AdRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMaritalStatus()Lcom/tappx/sdk/android/AdRequest$MaritalStatus;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/AdRequest;->g:Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    return-object v0
.end method

.method public getMediator()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/AdRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/AdRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getYearOfBirth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/sdk/android/AdRequest;->d:I

    return v0
.end method

.method public isUseTestAds()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/sdk/android/AdRequest;->h:Z

    return v0
.end method

.method public keywords(Ljava/lang/String;)Lcom/tappx/sdk/android/AdRequest;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/sdk/android/AdRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public maritalStatus(Lcom/tappx/sdk/android/AdRequest$MaritalStatus;)Lcom/tappx/sdk/android/AdRequest;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/sdk/android/AdRequest;->g:Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    return-object p0
.end method

.method public mediator(Ljava/lang/String;)Lcom/tappx/sdk/android/AdRequest;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/sdk/android/AdRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public sdkType(Ljava/lang/String;)Lcom/tappx/sdk/android/AdRequest;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/sdk/android/AdRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public useTestAds(Z)Lcom/tappx/sdk/android/AdRequest;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/tappx/sdk/android/AdRequest;->h:Z

    return-object p0
.end method

.method public yearOfBirth(I)Lcom/tappx/sdk/android/AdRequest;
    .registers 2

    .line 1
    iput p1, p0, Lcom/tappx/sdk/android/AdRequest;->d:I

    return-object p0
.end method

.class public final enum Lcom/c/a/b/a/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/c/a/b/a/e;

.field public static final enum b:Lcom/c/a/b/a/e;

.field public static final enum c:Lcom/c/a/b/a/e;

.field public static final enum d:Lcom/c/a/b/a/e;

.field public static final enum e:Lcom/c/a/b/a/e;

.field private static final synthetic f:[Lcom/c/a/b/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/c/a/b/a/e;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/c/a/b/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/b/a/e;->a:Lcom/c/a/b/a/e;

    new-instance v0, Lcom/c/a/b/a/e;

    const-string v1, "IN_SAMPLE_POWER_OF_2"

    invoke-direct {v0, v1, v3}, Lcom/c/a/b/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/b/a/e;->b:Lcom/c/a/b/a/e;

    new-instance v0, Lcom/c/a/b/a/e;

    const-string v1, "IN_SAMPLE_INT"

    invoke-direct {v0, v1, v4}, Lcom/c/a/b/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/b/a/e;->c:Lcom/c/a/b/a/e;

    new-instance v0, Lcom/c/a/b/a/e;

    const-string v1, "EXACTLY"

    invoke-direct {v0, v1, v5}, Lcom/c/a/b/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/b/a/e;->d:Lcom/c/a/b/a/e;

    new-instance v0, Lcom/c/a/b/a/e;

    const-string v1, "EXACTLY_STRETCHED"

    invoke-direct {v0, v1, v6}, Lcom/c/a/b/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/b/a/e;->e:Lcom/c/a/b/a/e;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/c/a/b/a/e;

    sget-object v1, Lcom/c/a/b/a/e;->a:Lcom/c/a/b/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/c/a/b/a/e;->b:Lcom/c/a/b/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/a/b/a/e;->c:Lcom/c/a/b/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/a/b/a/e;->d:Lcom/c/a/b/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/a/b/a/e;->e:Lcom/c/a/b/a/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/c/a/b/a/e;->f:[Lcom/c/a/b/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/b/a/e;
    .locals 1

    const-class v0, Lcom/c/a/b/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/a/b/a/e;

    return-object v0
.end method

.method public static values()[Lcom/c/a/b/a/e;
    .locals 1

    sget-object v0, Lcom/c/a/b/a/e;->f:[Lcom/c/a/b/a/e;

    invoke-virtual {v0}, [Lcom/c/a/b/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/b/a/e;

    return-object v0
.end method

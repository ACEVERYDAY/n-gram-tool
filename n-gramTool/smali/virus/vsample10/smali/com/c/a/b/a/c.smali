.class public final enum Lcom/c/a/b/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/c/a/b/a/c;

.field public static final enum b:Lcom/c/a/b/a/c;

.field public static final enum c:Lcom/c/a/b/a/c;

.field public static final enum d:Lcom/c/a/b/a/c;

.field public static final enum e:Lcom/c/a/b/a/c;

.field private static final synthetic f:[Lcom/c/a/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/c/a/b/a/c;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/c/a/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/b/a/c;->a:Lcom/c/a/b/a/c;

    new-instance v0, Lcom/c/a/b/a/c;

    const-string v1, "DECODING_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/c/a/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/b/a/c;->b:Lcom/c/a/b/a/c;

    new-instance v0, Lcom/c/a/b/a/c;

    const-string v1, "NETWORK_DENIED"

    invoke-direct {v0, v1, v4}, Lcom/c/a/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/b/a/c;->c:Lcom/c/a/b/a/c;

    new-instance v0, Lcom/c/a/b/a/c;

    const-string v1, "OUT_OF_MEMORY"

    invoke-direct {v0, v1, v5}, Lcom/c/a/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/b/a/c;->d:Lcom/c/a/b/a/c;

    new-instance v0, Lcom/c/a/b/a/c;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/c/a/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/b/a/c;->e:Lcom/c/a/b/a/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/c/a/b/a/c;

    sget-object v1, Lcom/c/a/b/a/c;->a:Lcom/c/a/b/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/c/a/b/a/c;->b:Lcom/c/a/b/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/a/b/a/c;->c:Lcom/c/a/b/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/a/b/a/c;->d:Lcom/c/a/b/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/a/b/a/c;->e:Lcom/c/a/b/a/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/c/a/b/a/c;->f:[Lcom/c/a/b/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/b/a/c;
    .locals 1

    const-class v0, Lcom/c/a/b/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/a/b/a/c;

    return-object v0
.end method

.method public static values()[Lcom/c/a/b/a/c;
    .locals 1

    sget-object v0, Lcom/c/a/b/a/c;->f:[Lcom/c/a/b/a/c;

    invoke-virtual {v0}, [Lcom/c/a/b/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/b/a/c;

    return-object v0
.end method

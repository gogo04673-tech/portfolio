import type { SectionProps } from "./section.types";

export const Section = ({ id, className, children }: SectionProps) => {
    return (
        <section
            id={id}
            className={className && "py-32 relative overflow-hidden"}>
            {children}
        </section>);
};